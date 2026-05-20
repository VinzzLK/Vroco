.class public Lcom/mi/appfinder/launcher/utils/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# static fields
.field private static final PACKAGE_LAUNCHER_MIUI:Ljava/lang/String; = "com.miui.home"

.field private static final PACKAGE_LAUNCHER_POCO:Ljava/lang/String; = "com.vroco.launcher"

.field private static homePackageName:Ljava/lang/String; = null

.field private static homeVersionCode:I = -0x1

.field private static homeVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHomePackageName()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getHomeVersionCode()I
    .locals 3

    .line 50
    sget v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->getHomePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :cond_0
    :goto_0
    sget v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionCode:I

    return v0
.end method

.method public static getHomeVersionName()Ljava/lang/String;
    .locals 3

    .line 35
    sget-object v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->getHomePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_0
    :goto_0
    sget-object v0, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->homeVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 2

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static getMiuiRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.region"

    .line 26
    invoke-static {v0, p0}, Lcom/mi/appfinder/launcher/utils/SystemPropertyUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMiuiVersion()Ljava/lang/String;
    .locals 2

    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public static isMiuiLauncher()Z
    .locals 2

    .line 77
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->getHomePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPocoLauncher()Z
    .locals 2

    .line 73
    invoke-static {}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->getHomePackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.vroco.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isProvisioned(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "HomeFinderUtils"

    const-string v2, "isProvisioned"

    .line 85
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
