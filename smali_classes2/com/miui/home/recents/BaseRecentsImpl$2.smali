.class Lcom/miui/home/recents/BaseRecentsImpl$2;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl;->registerTouchExplorationStateChangeListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$2;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$2;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$202(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    return-void
.end method
