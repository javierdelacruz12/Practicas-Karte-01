package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class ExamplesTest {

    // Agrega tu lista para manejar errores
    private static List<String> errores = new ArrayList<>();

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:examples")
                .outputCucumberJson(true)
                .parallel(5);
        generateReport(results.getReportDir());
        // Verifica si hay errores
        if (!errores.isEmpty()) {
            fail("Se encontraron errores: " + errores);
        }
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "Report");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        // Captura errores al generar el reporte
        try {
            reportBuilder.generateReports();
        } catch (Exception e) {
            errores.add("Error al generar el reporte: " + e.getMessage());
        }
    }
}
