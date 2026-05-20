.class public abstract Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
.super Ljava/lang/Object;
.source "ServiceDeliveryUIAdapter.java"


# static fields
.field public static final STYLE_MEDIUM:I = 0x2

.field public static final STYLE_SMALL:I = 0x1


# instance fields
.field public final SERVICE_DELIVERY_INDICATOR_WIDTH_DEF:F

.field public totalHeight:I

.field public totalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    .line 13
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    const v0, 0x40666666    # 3.6f

    .line 17
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->SERVICE_DELIVERY_INDICATOR_WIDTH_DEF:F

    return-void
.end method


# virtual methods
.method public abstract getContainerHeight()I
.end method

.method public abstract getContainerWidth()I
.end method

.method public abstract getIndicatorPaddingH()I
.end method

.method public abstract getIndicatorPaddingV()I
.end method

.method public abstract getIndicatorWidth()I
.end method

.method public abstract getPadding()I
.end method

.method public getServiceDeliveryHeight()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryHeight(I)I

    move-result p0

    return p0
.end method

.method public abstract getServiceDeliveryHeight(I)I
.end method

.method public getServiceDeliveryWidth()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    invoke-virtual {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getServiceDeliveryWidth(I)I

    move-result p0

    return p0
.end method

.method public abstract getServiceDeliveryWidth(I)I
.end method

.method public abstract getStyle()I
.end method
