use utf8;

package SemanticWeb::Schema::PhysicalActivity;

# ABSTRACT: Any bodily activity that enhances or maintains physical fitness and overall health and wellness

use Moo;

extends qw/ SemanticWeb::Schema::LifestyleModification /;


use MooX::JSON_LD 'PhysicalActivity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

Any bodily activity that enhances or maintains physical fitness and overall
health and wellness. Includes activity that is part of daily living and
routine, structured exercise, and exercise prescribed as part of a medical
treatment or recovery plan.




=head1 ATTRIBUTES


=head2 C<associated_anatomy>

C<associatedAnatomy>

The anatomy of the underlying organ system or structures associated with
this entity.


A associated_anatomy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalSystem']>

=item C<InstanceOf['SemanticWeb::Schema::SuperficialAnatomy']>

=back

=head2 C<_has_associated_anatomy>

A predicate for the L</associated_anatomy> attribute.

=cut

has associated_anatomy => (
    is        => 'rw',
    predicate => '_has_associated_anatomy',
    json_ld   => 'associatedAnatomy',
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);


=head2 C<epidemiology>



The characteristics of associated patients, such as age, gender, race etc.


A epidemiology should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_epidemiology>

A predicate for the L</epidemiology> attribute.

=cut

has epidemiology => (
    is        => 'rw',
    predicate => '_has_epidemiology',
    json_ld   => 'epidemiology',
);


=head2 C<pathophysiology>



Changes in the normal mechanical, physical, and biochemical functions that
are associated with this activity or condition.


A pathophysiology should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pathophysiology>

A predicate for the L</pathophysiology> attribute.

=cut

has pathophysiology => (
    is        => 'rw',
    predicate => '_has_pathophysiology',
    json_ld   => 'pathophysiology',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LifestyleModification>

=cut

1;
