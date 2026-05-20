.class public Lcom/miui/msa/utils/PreInstallUtils;
.super Ljava/lang/Object;
.source "PreInstallUtils.java"


# static fields
.field private static final MSA_VERSION_NEW_PREINSTALL:I = 0x7876a304

.field private static final PACKAGE_DISABLE:I = -0x2

.field private static final PACKAGE_NOT_INSTALL:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com.miui.systemAdSolution"

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lcom/msa/sdk/tool/MsaUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 30
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    const/4 p0, -0x2

    return p0

    .line 33
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0
.end method

.method public static isNewPreinstallVersion(Landroid/content/Context;)Z
    .locals 3

    .line 19
    invoke-static {p0}, Lcom/miui/msa/utils/PreInstallUtils;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    const v0, 0x7876a304    # 2.0009553E34f

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",isNew="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MsaUtils"

    invoke-static {v1, p0}, Lcom/msa/sdk/tool/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
