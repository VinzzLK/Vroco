.class public final Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;
.super Landroidx/preference/Preference;
.source "IconCustomizeSaclePreference.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lmiuix/preference/FolmeAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;
    }
.end annotation


# instance fields
.field private mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

.field private mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0089

    .line 21
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getCurrentSetIconSizeValue()Ljava/lang/Float;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconCustomizeSaclePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 27
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const v0, 0x7f0a033f

    .line 28
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.settings.IconSizeSeekBar"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/settings/IconSizeSeekBar;

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    .line 29
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 30
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mIconSizeBar:Lcom/miui/home/settings/IconSizeSeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;->onIconSizeChange(Ljava/lang/Float;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final setIconSizeChangeListener(Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizeSaclePreference;->mListener:Lcom/miui/home/settings/preference/IconCustomizeSaclePreference$IconSizeChangeListener;

    return-void
.end method
