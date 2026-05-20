.class Lcom/miui/home/launcher/LauncherCallbacksChinese;
.super Ljava/lang/Object;
.source "LauncherCallbacksChinese.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# instance fields
.field private final mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

.field private final mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

.field private final mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    .line 24
    new-instance v0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    .line 25
    new-instance v0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    return-void
.end method

.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onFeedHomeIntent(Landroid/content/Intent;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHomeGestureStart()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "LauncherCallbacksChinese"

    if-eqz v0, :cond_0

    const-string p0, "onHomeIntent AssistantCallbacks: true"

    .line 101
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onHomeIntent SearchCallbacks: true"

    .line 105
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHomeIntent feedCallbacks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 133
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    return-void
.end method

.method public onSearchHomeIntent(Landroid/content/Intent;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mAssistantCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mFeedCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksChinese;->mSearchCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    return-void
.end method
