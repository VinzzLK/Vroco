.class public final synthetic Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AppInfo;

.field public final synthetic f$1:Lio/reactivex2/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;->f$0:Lcom/miui/home/launcher/AppInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;->f$1:Lio/reactivex2/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;->f$0:Lcom/miui/home/launcher/AppInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;->f$1:Lio/reactivex2/ObservableEmitter;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->$r8$lambda$e7N6uAL6GInHrWJYwvSVkWpvf0M(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
