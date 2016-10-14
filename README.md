# GIT blame stat scanner

## Example usage 

./blame-sacan -dir /projects/myGitProject/ -json

will return stat for your project in JSON format

## Supported command line keys 

--dir  Absolute path to root directory of GIT project files to be analysed.

--excluded_dir Comma separated list with dirs for exclusion

--xml Print result as XML.

--json Print result as JSON.

--help Show short help messae for possible keys


## Example JSON response
```JSON
{
        "spent_time": 0.017932706,
        "available_file_types": {
                "complete_files_count": 7,
                "complete_folders_count": 8,
                "file_types_data": [
                        {
                                "extension": ".md",
                                "files_count": 1,
                                "percentage_usage": 14.286
                        },
                        {
                                "extension": ".go",
                                "files_count": 1,
                                "percentage_usage": 14.286
                        },
                        {
                                "extension": ".no_ext",
                                "files_count": 2,
                                "percentage_usage": 28.571
                        },
                        {
                                "extension": ".exe",
                                "files_count": 1,
                                "percentage_usage": 14.286
                        },
                        {
                                "extension": ".bat",
                                "files_count": 1,
                                "percentage_usage": 14.286
                        },
                        {
                                "extension": ".sh",
                                "files_count": 1,
                                "percentage_usage": 14.286
                        }
                ]
        },
        "customer_commmits": [
                {
                        "author_name": "Kharitonov Stanislav",
                        "author_email": "some.email@example.com",
                        "commited_lines": 1,
                        "commits_count": 1
                }
        ]
}
```
## Example XML response
```XML
  <finaleResponse>
      <spentTime>3.5002824610000003</spentTime>
      <availableFileTypes>
          <completeFilesCount>7</completeFilesCount>
          <completeFoldersCount>8</completeFoldersCount>
          <fileTypesData>
              <fileExtension>.go</fileExtension>
              <filesCount>1</filesCount>
              <percentageUsage>14.286</percentageUsage>
          </fileTypesData>
          <fileTypesData>
              <fileExtension>.no_ext</fileExtension>
              <filesCount>2</filesCount>
              <percentageUsage>28.571</percentageUsage>
          </fileTypesData>
          <fileTypesData>
              <fileExtension>.exe</fileExtension>
              <filesCount>1</filesCount>
              <percentageUsage>14.286</percentageUsage>
          </fileTypesData>
          <fileTypesData>
              <fileExtension>.bat</fileExtension>
              <filesCount>1</filesCount>
              <percentageUsage>14.286</percentageUsage>
          </fileTypesData>
          <fileTypesData>
              <fileExtension>.sh</fileExtension>
              <filesCount>1</filesCount>
              <percentageUsage>14.286</percentageUsage>
          </fileTypesData>
          <fileTypesData>
              <fileExtension>.md</fileExtension>
              <filesCount>1</filesCount>
              <percentageUsage>14.286</percentageUsage>
          </fileTypesData>
      </availableFileTypes>
      <customerCommits>
          <authorName>Kharitonov Stanislav</authorName>
          <authorEmail>some.email@example.com</authorEmail>
          <commitedLinesCount>19744</commitedLinesCount>
          <commitsCount>3</commitsCount>
      </customerCommits>
  </finaleResponse>
```