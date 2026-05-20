.class public final Lcom/miui/home/recents/gesture/NavStubGestureEventManager$1;
.super Landroid/database/ContentObserver;
.source "NavStubGestureEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/gesture/NavStubGestureEventManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$1;->this$0:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "NavStubGestureEventManager"

    const-string v0, "voiceAssistantConfigObserver onChange"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$1;->this$0:Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->checkDoubleClickTriggerApp()V

    return-void
.end method
