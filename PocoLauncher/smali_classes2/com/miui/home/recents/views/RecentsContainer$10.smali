.class Lcom/miui/home/recents/views/RecentsContainer$10;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 8

    .line 697
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p1}, Lcom/miui/home/recents/views/RecentsContainer;->getFormatedMemory(JZZ)Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1100(Lcom/miui/home/recents/views/RecentsContainer;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/miui/home/recents/views/RecentsContainer;->getFormatedMemory(JZZ)Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1200(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, p1

    aput-object v1, v6, v4

    const v7, 0x7f1004be

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1300(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, p1

    aput-object v1, v5, v4

    const v0, 0x7f1004bf

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1200(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    .line 705
    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1300(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, p1

    .line 706
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$10;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {p0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1400(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/view/View;

    move-result-object p0

    if-eqz v4, :cond_2

    const/16 p1, 0x8

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 694
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer$10;->accept(Ljava/lang/Long;)V

    return-void
.end method
