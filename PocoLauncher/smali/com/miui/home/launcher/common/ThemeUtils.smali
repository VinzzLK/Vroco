.class public Lcom/miui/home/launcher/common/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public static synthetic $r8$lambda$Gl7q9DLAfIGA7fxqa06dLgXXCbY(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ThemeUtils;->lambda$tellThemeLockWallpaperPath$0(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$tellThemeLockWallpaperPath$0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const-string v0, "content://com.android.thememanager.provider/lockscreen"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key_lockscreen_path"

    .line 26
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p1, v0, v1}, Lcom/miui/launcher/utils/ContentProviderUtils;->updateData(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/miui/home/launcher/common/ThemeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/common/ThemeUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateFilePermissionWithThemeContext(Ljava/lang/String;)Z
    .locals 0

    .line 32
    invoke-static {p0}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
