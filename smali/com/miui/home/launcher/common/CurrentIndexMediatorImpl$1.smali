.class Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;
.super Ljava/lang/Object;
.source "CurrentIndexMediatorImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->announceForAccessibilityIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;->this$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;->this$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    iget-object v0, v0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;->this$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    iget v3, v3, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    const p1, 0x7f0e0018

    .line 159
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;->this$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
