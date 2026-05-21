.class public Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;
.super Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
.source "MediumServiceDeliveryUIAdapter.java"


# instance fields
.field public final MEDIUM_GRID_ITEM_PADDING_H:F

.field public final MEDIUM_GRID_ITEM_PADDING_V:F

.field public final MEDIUM_GRID_PADDING:F

.field public final MEDIUM_GRID_WEIGHT:F

.field public final MEDIUM_SERVICE_INDICATOR_PADDING_H:F

.field public final SERVICE_DELIVERY_CONTAINER_HEIGHT:F

.field public final SERVICE_DELIVERY_CONTAINER_WIDTH:F

.field public final SERVICE_DELIVERY_HEIGHT:F

.field public final SERVICE_DELIVERY_INDICATOR_PADDING_V:F

.field public final SERVICE_DELIVERY_INDICATOR_WIDTH:F

.field public final SERVICE_DELIVERY_PADDING:F

.field public final SERVICE_DELIVERY_TOTAL_HEIGHT:F

.field public final SERVICE_DELIVERY_TOTAL_WIDTH:F

.field public final SERVICE_DELIVERY_WIDTH:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;-><init>()V

    const/high16 v0, 0x43ac0000    # 344.0f

    .line 17
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_TOTAL_WIDTH:F

    const/high16 v0, 0x43200000    # 160.0f

    .line 18
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_TOTAL_HEIGHT:F

    const v0, 0x3ed65359

    .line 22
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_WIDTH:F

    const v0, 0x3f666666    # 0.9f

    .line 23
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_HEIGHT:F

    const v1, 0x3eee23b9

    .line 27
    iput v1, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_CONTAINER_WIDTH:F

    .line 28
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_CONTAINER_HEIGHT:F

    const v0, 0x3c77aa44

    .line 32
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_INDICATOR_WIDTH:F

    const v0, 0x3c93a581

    .line 37
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->MEDIUM_SERVICE_INDICATOR_PADDING_H:F

    const v0, 0x3ccccccd    # 0.025f

    .line 38
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_INDICATOR_PADDING_V:F

    const v0, 0x3cbe82fa

    .line 42
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->SERVICE_DELIVERY_PADDING:F

    .line 46
    iput v1, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->MEDIUM_GRID_WEIGHT:F

    const v0, 0x3d26b29b

    .line 50
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->MEDIUM_GRID_ITEM_PADDING_H:F

    const v0, 0x3d333333    # 0.04375f

    .line 51
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->MEDIUM_GRID_ITEM_PADDING_V:F

    const v0, 0x3d0ee23c

    .line 55
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/MediumServiceDeliveryUIAdapter;->MEDIUM_GRID_PADDING:F

    return-void
.end method


# virtual methods
.method public getContainerHeight()I
    .locals 1

    .line 93
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 88
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3eee23b9

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridHeight(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)I
    .locals 1

    .line 66
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, v0, :cond_0

    const p1, 0x3f666666    # 0.9f

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public getGridItemPaddingH()I
    .locals 1

    .line 70
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d26b29b

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridItemPaddingV()I
    .locals 1

    .line 74
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3d333333    # 0.04375f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridPadding()I
    .locals 1

    .line 78
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d0ee23c

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridWidth(Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;)I
    .locals 1

    .line 62
    sget-object v0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DELIVERY:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    if-ne p1, v0, :cond_0

    const p1, 0x3eee23b9

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingH()I
    .locals 1

    .line 108
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3c93a581

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingV()I
    .locals 1

    .line 113
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3ccccccd    # 0.025f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .line 118
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3c77aa44

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getPadding()I
    .locals 1

    .line 83
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3cbe82fa

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryHeight(I)I
    .locals 0

    int-to-float p0, p1

    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryWidth(I)I
    .locals 0

    int-to-float p0, p1

    const p1, 0x3ed65359

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getStyle()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
