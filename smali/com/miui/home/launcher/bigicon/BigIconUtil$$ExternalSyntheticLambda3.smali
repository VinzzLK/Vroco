.class public final synthetic Lcom/miui/home/launcher/bigicon/BigIconUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigIconUtil$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->$r8$lambda$8srWhEMUrrOb4S-M1iv5Fhnow0I(Lkotlin/jvm/internal/Ref$IntRef;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
