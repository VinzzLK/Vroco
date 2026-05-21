.class public Lcom/mi/appfinder/launcher/privacy/UserExperienceObserver;
.super Landroid/database/ContentObserver;
.source "UserExperienceObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeFinderObserver"

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static getUserExperienceStatus(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "upload_log_pref"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "HomeFinderObserver"

    const-string v2, "getUserExperienceStatus"

    .line 33
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "user experience to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomeFinderObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/privacy/UserExperienceObserver;->getUserExperienceStatus(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->updateFirebaseReport(Z)V

    return-void
.end method
