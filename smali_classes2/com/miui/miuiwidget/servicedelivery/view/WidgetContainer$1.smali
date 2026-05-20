.class Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;
.super Landroid/view/ViewOutlineProvider;
.source "WidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;->updateWidgetViewLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

.field final synthetic val$outLineSize:I

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;ILandroid/content/res/Resources;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer;

    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;->val$outLineSize:I

    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 145
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;->val$outLineSize:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/WidgetContainer$1;->val$resources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_radius:I

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 145
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    const/4 p0, 0x0

    .line 147
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
