.class public Lcom/miui/home/launcher/compat/LauncherLayoutType;
.super Ljava/lang/Object;
.source "LauncherLayoutType.java"


# static fields
.field public static mIsFourStandardCrowded:Z

.field private static final sTrackLayoutTypeName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->sTrackLayoutTypeName:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mIsFourStandardCrowded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    .line 23
    sget-object p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->sTrackLayoutTypeName:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "loose"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "standard"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dense"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initAndUpdateTypeIfNotValid()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getDefaultType()I

    move-result v1

    const-string v2, "pref_key_layout_type"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isSupportLooseLayout()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->saveAndupdateLayoutType(I)V

    :cond_0
    return-void
.end method

.method public static isSupportLooseLayout()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getCurType()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 58
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    return p0
.end method

.method public getCurrentTypeName()Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->sTrackLayoutTypeName:Ljava/util/HashMap;

    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultType()I
    .locals 1

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->isSupportLooseLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mIsFourStandardCrowded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 0

    .line 34
    sput-boolean p2, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mIsFourStandardCrowded:Z

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetLayoutType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->initAndUpdateTypeIfNotValid()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getDefaultType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->saveAndupdateLayoutType(I)V

    .line 40
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init layoutType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isFourStandardCrowded "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mIsFourStandardCrowded:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherLayoutType"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initTypeFromSPOnly()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetLayoutType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->initAndUpdateTypeIfNotValid()V

    return-void
.end method

.method public isLooseLayout()Z
    .locals 0

    .line 75
    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public saveAndupdateLayoutType(I)V
    .locals 1

    .line 66
    iput p1, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    const-string v0, "pref_key_layout_type"

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public updateType(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/miui/home/launcher/compat/LauncherLayoutType;->mCurrentType:I

    return-void
.end method

.method public updateTypeWhenSearchBarChange()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->getDefaultType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/LauncherLayoutType;->saveAndupdateLayoutType(I)V

    return-void
.end method
