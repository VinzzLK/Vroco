.class Lmiuix/popupwidget/widget/PopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    .line 944
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 963
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 964
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupWindow;->access$500(Lmiuix/popupwidget/widget/PopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    .line 967
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-static {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->access$600(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 957
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 958
    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-static {p0}, Lmiuix/popupwidget/widget/PopupWindow;->access$400(Lmiuix/popupwidget/widget/PopupWindow;)V

    return-void
.end method
