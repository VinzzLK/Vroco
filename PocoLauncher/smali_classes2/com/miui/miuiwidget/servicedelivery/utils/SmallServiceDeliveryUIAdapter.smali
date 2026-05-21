.class public abstract Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;
.super Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;
.source "SmallServiceDeliveryUIAdapter.java"


# instance fields
.field public final GRID_PADDING:F

.field public final SERVICE_DELIVERY_TOTAL_HEIGHT:F

.field public final SERVICE_DELIVERY_TOTAL_WIDTH:F

.field public final SMALL_GRID_ITEM_PADDING:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;-><init>()V

    const/high16 v0, 0x43200000    # 160.0f

    .line 11
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->SERVICE_DELIVERY_TOTAL_WIDTH:F

    .line 12
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->SERVICE_DELIVERY_TOTAL_HEIGHT:F

    const v0, 0x3d933333

    .line 16
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->SMALL_GRID_ITEM_PADDING:F

    const v0, 0x3dcccccd    # 0.1f

    .line 18
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;->GRID_PADDING:F

    return-void
.end method


# virtual methods
.method public getGridItemPaddingH()I
    .locals 1

    .line 24
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d933333

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridItemPaddingV()I
    .locals 1

    .line 28
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d933333

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getGridPadding()I
    .locals 1

    .line 32
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
