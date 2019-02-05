println "Post processing started..."
import groovy.io.FileType

dir = new File(new File(request.outputDirectory), request.artifactId)
dir.eachFileRecurse FileType.FILES,  { file ->
    if (file.name.endsWith(".sh")) {
        println "Processing file ${file.absolutePath}"
        file.setExecutable(true, false)
        String filename = file.absolutePath
        filename = filename[0..<filename.lastIndexOf('.')]
        println filename
        file.renameTo(filename)
    }
}
println "Post processing finished..."
