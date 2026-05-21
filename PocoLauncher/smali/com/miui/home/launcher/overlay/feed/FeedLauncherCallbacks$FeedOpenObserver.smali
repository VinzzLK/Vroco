.class Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;
.super Landroid/database/ContentObserver;
.source "FeedLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedOpenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    .line 100
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->access$300(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->access$100(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->access$200(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    .line 109
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-static {}, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isNewHomeNewDynamicEffect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->setNewEffect(Z)V

    return-void
.end method
