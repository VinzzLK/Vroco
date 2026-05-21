.class public final Lcom/miui/home/launcher/util/OperatorGridUtils;
.super Ljava/lang/Object;
.source "OperatorGridUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/util/OperatorGridUtils;->Companion:Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;

    return-void
.end method

.method public static final is2LineOperators()Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/util/OperatorGridUtils;->Companion:Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;->is2LineOperators()Z

    move-result v0

    return v0
.end method

.method public static final must2LineTitle()Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/util/OperatorGridUtils;->Companion:Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;->must2LineTitle()Z

    move-result v0

    return v0
.end method

.method public static final setMaxLines(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/util/OperatorGridUtils;->Companion:Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/OperatorGridUtils$Companion;->setMaxLines(Landroid/widget/TextView;)V

    return-void
.end method
