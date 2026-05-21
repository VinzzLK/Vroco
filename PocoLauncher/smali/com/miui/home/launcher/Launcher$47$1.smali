.class Lcom/miui/home/launcher/Launcher$47$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$47;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$47;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$ErauYbZSyAqYP2xZcecOxg-mq9M(Lcom/miui/home/launcher/Launcher$47$1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$47$1;->lambda$run$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NS3VKlVwShGwd8kv-zHxFy6Z3lg(Lcom/miui/home/launcher/Launcher$47$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$47$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher$47;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 5158
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 5181
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v0, "russiaFileDownloadUri"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->analysisCloudRussiaFile(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$run$1(Landroid/content/Intent;)V
    .locals 0

    .line 5257
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5161
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5162
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$4400(Lcom/miui/home/launcher/Launcher;Z)V

    .line 5163
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4900(Lcom/miui/home/launcher/Launcher;)V

    .line 5164
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onUserPresent()V

    .line 5165
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5166
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 5167
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5168
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto/16 :goto_1

    .line 5170
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5171
    sget-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    if-nez v0, :cond_2

    const-string v0, "Launcher"

    const-string v1, "closeFolder by broadcast"

    .line 5172
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5173
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)V

    .line 5176
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->resetToNormalIfInOverview()V

    .line 5177
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOffFromReceiver()V

    .line 5178
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V

    .line 5179
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5000(Lcom/miui/home/launcher/Launcher;)V

    .line 5180
    new-instance v0, Lcom/miui/home/launcher/Launcher$47$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$47$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$47$1;)V

    invoke-static {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 5183
    invoke-static {}, Lcom/miui/home/recents/util/SafeTimeIntervalDetection;->resetCurrentTime()V

    .line 5184
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ScreenOffEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/ScreenOffEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 5185
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/AppUsageMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppUsageMonitor;->onScreenOff()V

    goto/16 :goto_1

    .line 5186
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaomi.layout.RU_LAYOUT_DOWNLOAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5187
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->markRussiaFolderUri(Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V

    goto/16 :goto_1

    .line 5188
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5189
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5190
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v0, "is_show"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 5191
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 5193
    :cond_5
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 5196
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5197
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 5198
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v3, v3, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/Utilities;->isSameSignatureWhitHome(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5201
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    const-string/jumbo v3, "wallpaperInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 5204
    invoke-static {v0}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 5206
    iget-object v3, v3, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move-object v3, v4

    .line 5207
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 5208
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_9
    if-eqz v4, :cond_a

    .line 5211
    new-instance v3, Lcom/miui/home/launcher/Launcher$47$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$47$1$1;-><init>(Lcom/miui/home/launcher/Launcher$47$1;Ljava/lang/String;)V

    new-array p0, v2, [Landroid/net/Uri;

    aput-object v4, p0, v1

    .line 5235
    invoke-virtual {v3, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 5237
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "set_lock_wallpaper_result"

    .line 5238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5239
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5241
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    const-string/jumbo v1, "showTime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5242
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 5243
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5200(Lcom/miui/home/launcher/Launcher;J)V

    goto/16 :goto_1

    .line 5245
    :cond_c
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/Launcher;->access$4400(Lcom/miui/home/launcher/Launcher;Z)V

    goto/16 :goto_1

    .line 5247
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5248
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto/16 :goto_1

    .line 5249
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    .line 5250
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaomi.mihomemanager"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5251
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->clearApplicationUserData(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5252
    :cond_f
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5253
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5400(Lcom/miui/home/launcher/Launcher;)V

    .line 5254
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    goto/16 :goto_1

    .line 5255
    :cond_10
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5256
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/launcher/Launcher$47$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$47$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher$47$1;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5259
    :cond_11
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5260
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    .line 5261
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/util/NetWorkUtils;->isConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 5262
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->setIsConnectedToTheInternet(Z)V

    goto :goto_1

    .line 5264
    :cond_12
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5265
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/Launcher;->access$4700(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    .line 5266
    :cond_13
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5267
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->this$1:Lcom/miui/home/launcher/Launcher$47;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5600(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 5268
    :cond_14
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$47$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 5269
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    :cond_15
    :goto_1
    return-void
.end method
