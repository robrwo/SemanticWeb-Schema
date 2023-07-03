use utf8;

package SemanticWeb::Schema::AnatomicalStructure;

# ABSTRACT: Any part of the human body

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'AnatomicalStructure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Any part of the human body, typically a component of an anatomical system.
Organs, tissues, and cells are all anatomical structures.




=head1 ATTRIBUTES


=head2 C<associated_pathophysiology>

C<associatedPathophysiology>

If applicable, a description of the pathophysiology associated with the
anatomical system, including potential abnormal changes in the mechanical,
physical, and biochemical functions of the system.


A associated_pathophysiology should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_associated_pathophysiology>

A predicate for the L</associated_pathophysiology> attribute.

=cut

has associated_pathophysiology => (
    is        => 'rw',
    predicate => '_has_associated_pathophysiology',
    json_ld   => 'associatedPathophysiology',
);


=head2 C<body_location>

C<bodyLocation>

Location in the body of the anatomical structure.


A body_location should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_body_location>

A predicate for the L</body_location> attribute.

=cut

has body_location => (
    is        => 'rw',
    predicate => '_has_body_location',
    json_ld   => 'bodyLocation',
);


=head2 C<connected_to>

C<connectedTo>

Other anatomical structures to which this structure is connected.


A connected_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=head2 C<_has_connected_to>

A predicate for the L</connected_to> attribute.

=cut

has connected_to => (
    is        => 'rw',
    predicate => '_has_connected_to',
    json_ld   => 'connectedTo',
);


=head2 C<diagram>



An image containing a diagram that illustrates the structure and/or its
component substructures and/or connections with other structures.


A diagram should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=head2 C<_has_diagram>

A predicate for the L</diagram> attribute.

=cut

has diagram => (
    is        => 'rw',
    predicate => '_has_diagram',
    json_ld   => 'diagram',
);


=head2 C<part_of_system>

C<partOfSystem>

The anatomical or organ system that this structure is part of.


A part_of_system should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalSystem']>

=back

=head2 C<_has_part_of_system>

A predicate for the L</part_of_system> attribute.

=cut

has part_of_system => (
    is        => 'rw',
    predicate => '_has_part_of_system',
    json_ld   => 'partOfSystem',
);


=head2 C<related_condition>

C<relatedCondition>

A medical condition associated with this anatomy.


A related_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=head2 C<_has_related_condition>

A predicate for the L</related_condition> attribute.

=cut

has related_condition => (
    is        => 'rw',
    predicate => '_has_related_condition',
    json_ld   => 'relatedCondition',
);


=head2 C<related_therapy>

C<relatedTherapy>

A medical therapy related to this anatomy.


A related_therapy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTherapy']>

=back

=head2 C<_has_related_therapy>

A predicate for the L</related_therapy> attribute.

=cut

has related_therapy => (
    is        => 'rw',
    predicate => '_has_related_therapy',
    json_ld   => 'relatedTherapy',
);


=head2 C<sub_structure>

C<subStructure>

Component (sub-)structure(s) that comprise this anatomical structure.


A sub_structure should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AnatomicalStructure']>

=back

=head2 C<_has_sub_structure>

A predicate for the L</sub_structure> attribute.

=cut

has sub_structure => (
    is        => 'rw',
    predicate => '_has_sub_structure',
    json_ld   => 'subStructure',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
