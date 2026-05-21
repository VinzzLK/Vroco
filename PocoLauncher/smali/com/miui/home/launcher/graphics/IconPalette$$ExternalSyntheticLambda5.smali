.class public final synthetic Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->$r8$lambda$VmASnrTRMbrW24LinbU81wNGiDQ(Ljava/util/List;Ljava/util/List;)Lio/reactivex2/ObservableSource;

    move-result-object p0

    return-object p0
.end method
