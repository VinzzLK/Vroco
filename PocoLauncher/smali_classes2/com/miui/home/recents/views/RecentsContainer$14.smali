.class Lcom/miui/home/recents/views/RecentsContainer$14;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$14;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$14;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1700(Lcom/miui/home/recents/views/RecentsContainer;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1602(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    .line 1387
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$14;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1800(Lcom/miui/home/recents/views/RecentsContainer;)V

    return-void
.end method
