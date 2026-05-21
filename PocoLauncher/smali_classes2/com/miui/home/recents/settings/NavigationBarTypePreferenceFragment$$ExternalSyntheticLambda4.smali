.class public final synthetic Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->$r8$lambda$Il2ooGmz7CLqGrqSd-XEMVuS8H0(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
