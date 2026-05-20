.class Lcom/miui/home/recents/BaseRecentsImpl$18;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


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
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$18;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1198
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$18;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2200(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1199
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$18;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2300(Lcom/miui/home/recents/BaseRecentsImpl;)V

    :cond_0
    return-void
.end method
