.class public Lcom/xiaomi/mirror/util/AppUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/util/AppUtil$InstallStatus;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror"

.field private static sMirrorInstalledStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.permission.QUERY_ALL_PACKAGES"

    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static getMirrorInstallStatus(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/xiaomi/mirror/util/AppUtil;->sMirrorInstalledStatus:I

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.mirror"

    invoke-static {p0, v0}, Lcom/xiaomi/mirror/util/AppUtil;->getInstallStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/xiaomi/mirror/util/AppUtil;->sMirrorInstalledStatus:I

    :cond_0
    sget p0, Lcom/xiaomi/mirror/util/AppUtil;->sMirrorInstalledStatus:I

    return p0
.end method
