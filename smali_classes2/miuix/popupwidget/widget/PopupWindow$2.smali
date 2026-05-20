.class Lmiuix/popupwidget/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$2;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 195
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$2;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    iget-object v1, v0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->updatePopupWindowSpec(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)V

    .line 196
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow$2;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/PopupWindow;->updateLocation(Landroid/view/View;)V

    return-void
.end method
