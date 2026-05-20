.class public Lmiuix/autodensity/ConfigurationChangeFragment;
.super Landroid/app/Fragment;
.source "ConfigurationChangeFragment.java"


# instance fields
.field private mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

.field private mRemoveDensityChangeFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "->ConfigurationChangeFragment onAttach newConfig "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " context: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->ConfigurationChangeFragment onConfigurationChanged newConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    invoke-virtual {v1, v0, p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
    :try_start_0
    iget-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    if-eqz p1, :cond_0

    .line 40
    const-class p1, Landroid/app/Activity;

    const-string v1, "mActivityInfo"

    invoke-static {p1, v0, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    .line 41
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public removeDensityChangeFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mRemoveDensityChangeFlag:Z

    return-void
.end method

.method public setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmiuix/autodensity/ConfigurationChangeFragment;->mDensityProcessor:Lmiuix/autodensity/AutoDensityConfig;

    return-void
.end method
