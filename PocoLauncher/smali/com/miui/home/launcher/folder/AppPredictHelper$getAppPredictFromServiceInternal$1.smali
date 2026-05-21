.class public final Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;
.super Lcom/miui/apppredict/IAppPredictCallBack$Stub;
.source "AppPredictHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromServiceInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Vf52peR6CPio5AbJZd23nvuLSr0()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;->loadAppList$lambda-1$lambda-0()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/miui/apppredict/IAppPredictCallBack$Stub;-><init>()V

    return-void
.end method

.method private static final loadAppList$lambda-1$lambda-0()V
    .locals 1

    .line 57
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$updateAppPredict(Lcom/miui/home/launcher/folder/AppPredictHelper;)V

    return-void
.end method


# virtual methods
.method public loadAppList(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/miui/home/launcher/folder/AppPredictList;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/folder/AppPredictList;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$setMPredictInfoList$p(Lcom/miui/home/launcher/folder/AppPredictList;)V

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$getMPredictInfoList$p()Lcom/miui/home/launcher/folder/AppPredictList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/AppPredictList;->getApp_list()[Lcom/miui/home/launcher/folder/AppPredictItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
