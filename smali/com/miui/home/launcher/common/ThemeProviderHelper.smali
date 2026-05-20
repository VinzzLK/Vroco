.class public Lcom/miui/home/launcher/common/ThemeProviderHelper;
.super Ljava/lang/Object;
.source "ThemeProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeProviderHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static requestGrantThemeFiles(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "uriList"

    const-string v1, "resultStatus"

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "content://com.android.thememanager.theme_provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v2

    :cond_2
    :try_start_1
    const-string v3, "grantFilePermission"

    .line 47
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v2

    .line 53
    :cond_5
    :try_start_2
    sget-object p1, Lcom/miui/home/launcher/common/ThemeProviderHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestGrantThemeFiles fail, status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 57
    :cond_6
    sget-object p1, Lcom/miui/home/launcher/common/ThemeProviderHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "theme app is low version"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v2

    .line 60
    :goto_1
    :try_start_3
    sget-object p2, Lcom/miui/home/launcher/common/ThemeProviderHelper;->TAG:Ljava/lang/String;

    const-string v0, "Failed to grant theme files"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_7

    .line 64
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_7
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 67
    :cond_8
    throw p1

    :cond_9
    :goto_4
    return-object v2
.end method
