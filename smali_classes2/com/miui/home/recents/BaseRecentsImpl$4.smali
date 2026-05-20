.class Lcom/miui/home/recents/BaseRecentsImpl$4;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
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

    .line 336
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$4;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$4;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$500(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$4;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$500(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$4;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$500(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    return-void
.end method
