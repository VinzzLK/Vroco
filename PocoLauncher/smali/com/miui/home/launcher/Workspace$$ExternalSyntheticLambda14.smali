.class public final synthetic Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda14;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/miui/home/launcher/Workspace$$ExternalSyntheticLambda14;->f$0:F

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Workspace;->$r8$lambda$0zR8dxFO_asuwJBIlbMA9U8y4tU(FLcom/miui/home/launcher/CellScreen;)V

    return-void
.end method
