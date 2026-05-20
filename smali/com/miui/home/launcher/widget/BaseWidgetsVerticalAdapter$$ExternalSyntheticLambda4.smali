.class public final synthetic Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/Callable;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->$r8$lambda$k6VG1YFj74ydIcq7yLa_nc4DCq0(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    move-result-object p0

    return-object p0
.end method
