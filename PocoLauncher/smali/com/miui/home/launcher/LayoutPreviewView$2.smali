.class Lcom/miui/home/launcher/LayoutPreviewView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "LayoutPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LayoutPreviewView;->getDisAppearAnimListener(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)Lmiuix/animation/listener/TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LayoutPreviewView;

.field final synthetic val$newXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

.field final synthetic val$oldXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

.field final synthetic val$usingXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LayoutPreviewView;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    iput-object p2, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$usingXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iput-object p3, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$newXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iput-object p4, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$oldXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-static {p1}, Lcom/miui/home/launcher/LayoutPreviewView;->access$000(Lcom/miui/home/launcher/LayoutPreviewView;)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$usingXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$newXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$oldXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/home/launcher/LayoutPreviewView;->changeCellCountXNoAnim(Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    const-string p0, "LayoutPreviewView"

    const-string/jumbo p1, "workspace disappear anim cancel"

    .line 201
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    iget-object v0, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$usingXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$newXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    iget-object v2, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->val$oldXY:Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/LayoutPreviewView;->access$100(Lcom/miui/home/launcher/LayoutPreviewView;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;Lcom/miui/home/launcher/LayoutPreviewView$CellCountXY;)V

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    .line 192
    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-static {v1}, Lcom/miui/home/launcher/LayoutPreviewView;->access$400(Lcom/miui/home/launcher/LayoutPreviewView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-static {v1}, Lcom/miui/home/launcher/LayoutPreviewView;->access$200(Lcom/miui/home/launcher/LayoutPreviewView;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$2;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-static {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->access$300(Lcom/miui/home/launcher/LayoutPreviewView;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
