# token = vie4277xoukcivgxsmfx342crzk27no7cmj7tvhhkzmz4dc3giaq

$configs = @{
    module1 = @{
        version = "0.1.0"
        destination = "/Products/Extensions/XXXX/template"
    }
    module2 = @{
        version = "0.2.0"
        destination = "/Products/Extensions/YYY/template"
    }
    module3 = @{
        version = "0.1.2"
        destination = "/Products/Extensions/ZZZ/template"
    }
}

foreach ($config in $configs.GetEnumerator()) {
    Write-Host $config.Name " = " $config.Value.version " to " $config.Value.destination

    # az artifacts universal download --organization "https://dev.azure.com/thierrycarels0265/" `
    #                                 --project "dafc004e-1de0-4f56-b152-8b548cfe7aab" `
    #                                 --scope project `
    #                                 --feed "publish-feed" `
    #                                 --name "pipelines-java-package" `
    #                                 --version "0.0.10" `
    #                                 --path .

    az artifacts universal download --organization https://dev.azure.com/thierrycarels0265/ `
                                    --project="pipeline-playground" `
                                    --scope project `
                                    --feed publish-feed `
                                    --name my-first-package `
                                    --version 0.0.1 `
                                    --path .
                                
                                
}
