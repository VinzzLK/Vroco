.class Lcom/android/systemui/fsgesture/HomeDemoAct$1;
.super Ljava/lang/Object;
.source "HomeDemoAct.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/HomeDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$000(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$000(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$000(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 60
    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$000(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 61
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$100(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/HomeDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/HomeDemoAct;->access$100(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;

    move-result-object p0

    aget v1, v0, v1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDestPivot(II)V

    :cond_0
    return-void
.end method
