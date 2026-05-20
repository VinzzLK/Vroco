.class Lcom/miui/home/launcher/LayoutPreviewView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "LayoutPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LayoutPreviewView;->getAppearAnimListener()Lmiuix/animation/listener/TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LayoutPreviewView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LayoutPreviewView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/miui/home/launcher/LayoutPreviewView$1;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/LayoutPreviewView$1;->this$0:Lcom/miui/home/launcher/LayoutPreviewView;

    invoke-static {p0}, Lcom/miui/home/launcher/LayoutPreviewView;->access$000(Lcom/miui/home/launcher/LayoutPreviewView;)V

    const-string p0, "LayoutPreviewView"

    const-string/jumbo p1, "workspace appear anim cancel"

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 175
    sput-boolean p0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 181
    sput-boolean p0, Lcom/miui/home/launcher/ScreenView;->mIsChangingCellCount:Z

    return-void
.end method
