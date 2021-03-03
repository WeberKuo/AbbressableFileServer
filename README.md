# AbbressableFileServer

Build Image  
1) 將檔案放到 FileServer/wwwroot/ 目錄。
2) BuildImage.bat裡的RemoteImageName改成要存放的docker庫位置
3) 執行 BuildImage.bat.

部屬:  
Port 開在 30000。

範例輸出  
``` json
{  
    "Android":[{"Name":"\\Android\\Android.assetbundle","Version":"20200730024445"}, {"Name":"\\Android\\frank.assetbundle","Version":"20200730024445"}],      
    "iOS":[{"Name":"\\iOS\\frank.assetbundle", "Version":"20200730024445"}, {"Name":"\\iOS\\iOS.assetbundle","Version":"20200730024445"}],    
    "StandaloneWindows":[{"Name":"\\StandaloneWindows\\frank.assetbundle","Version":"20200730024445"}, {"Name":"\\StandaloneWindows\\StandaloneWindows.assetbundle","Version":"20200730024445"}],  
    "Dll":[{"Name":"\\Dll\\HotFix_Project.dll","Version":"20200807070458"}]        
}
```
``` C#
public class BundleInfo  
{  
    public string Name;  
    public string Version;  
}  
Dictionary<string, BundleInfo[]>
```
下載檔案
> http://127.0.0.1:30000/Android/BUNDLENAME.assetbundle