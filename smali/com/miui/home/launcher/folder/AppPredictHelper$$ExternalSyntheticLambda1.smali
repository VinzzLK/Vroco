.class public final synthetic Lcom/miui/home/launcher/folder/AppPredictHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/AppPredictHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/folder/AppPredictHelper;->$r8$lambda$whLSfvAhUriuGX9FJ_byhh4zTy0(Landroid/util/ArrayMap;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)I

    move-result p0

    return p0
.end method
