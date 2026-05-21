.class public final synthetic Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedHashMap;

.field public final synthetic f$1:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/LinkedHashMap;

    check-cast p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/DbCellCountHelper;->$r8$lambda$DI8FIJOFDrxkdwDkIbLjyDbqX5M(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;)V

    return-void
.end method
