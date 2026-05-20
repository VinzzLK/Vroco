.class public Lcom/mi/appfinder/launcher/FinderContentProviderHelper;
.super Ljava/lang/Object;
.source "FinderContentProviderHelper.java"


# static fields
.field public static final CALL_METHOD_GET_FINDER_GUIDE_SHOW:Ljava/lang/String; = "get_finder_guide_show"

.field public static final CALL_METHOD_GET_FINDER_REMOTE_CONFIG:Ljava/lang/String; = "get_finder_remote_config"

.field public static final CONTENT_PREFIX:Ljava/lang/String; = "content://"

.field public static final K_FINDER_ALIVE_SERVICE:Ljava/lang/String; = "service_enable"

.field public static final K_FINDER_FINDER_ENABLE:Ljava/lang/String; = "version_enable"

.field public static final K_SHOW_GUIDE:Ljava/lang/String; = "show_guide"

.field public static final PROVIDER_URI_FINDER_UI:Ljava/lang/String; = ".finder.ui.FinderProvider"

.field private static final TAG:Ljava/lang/String; = "HomeFinderProvider"

.field public static volatile mContentUriFinderUi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUriFinderUi()Ljava/lang/String;
    .locals 2

    .line 31
    sget-object v0, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->mContentUriFinderUi:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".finder.ui.FinderProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->mContentUriFinderUi:Ljava/lang/String;

    .line 34
    :cond_0
    sget-object v0, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->mContentUriFinderUi:Ljava/lang/String;

    return-object v0
.end method

.method public static getFinderGuideShowInfo(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getContentUriFinderUi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_finder_guide_show"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getFinderRemoteConfig(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getContentUriFinderUi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_finder_remote_config"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HomeFinderProvider"

    const-string v1, "FinderProvider Start: "

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "getResultFromProvider provider is null"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 79
    throw p1
.end method

.method private static getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HomeFinderProvider"

    if-nez v0, :cond_0

    const-string p0, "Device is invalid"

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 59
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Uri or package is not available"

    .line 60
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
