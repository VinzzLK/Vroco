.class Lcom/miui/home/launcher/IconMessageRender$4;
.super Landroid/util/Property;
.source "IconMessageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/IconMessageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/miui/home/launcher/ItemIcon;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/miui/home/launcher/ItemIcon;)Ljava/lang/Float;
    .locals 0

    .line 70
    iget-object p0, p1, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    iget p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconMessageRender$4;->get(Lcom/miui/home/launcher/ItemIcon;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/miui/home/launcher/ItemIcon;Ljava/lang/Float;)V
    .locals 0

    .line 75
    iget-object p0, p1, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->alpha:F

    .line 76
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconMessageRender$4;->set(Lcom/miui/home/launcher/ItemIcon;Ljava/lang/Float;)V

    return-void
.end method
