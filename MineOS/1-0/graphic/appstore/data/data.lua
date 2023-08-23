-- Define a global table to store installed applications
global InstalledApps = {
    "settings",
    "uninstaller",
    "appstore"
}

-- Function to install an app
global function appInstall(app)
    table.insert(appsIntalled, app)
    print(app .. " added")
end
