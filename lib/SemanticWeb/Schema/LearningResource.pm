use utf8;

package SemanticWeb::Schema::LearningResource;

# ABSTRACT: The LearningResource type can be used to indicate [[CreativeWork]]s (whether physical or digital) that have a particular and explicit orientation towards learning

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'LearningResource';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

The LearningResource type can be used to indicate L<SemanticWeb::Schema::CreativeWork>s (whether physical or digital) that have a particular and explicit orientation towards learning, education, skill acquisition, and other educational purposes.

L<SemanticWeb::Schema::LearningResource> is expected to be used as an addition to a primary type such as L<SemanticWeb::Schema::Book>, L<SemanticWeb::Schema::VideoObject>, L<SemanticWeb::Schema::Product> etc.

L<SemanticWeb::Schema::EducationEvent> serves a similar purpose for event-like things (e.g. a L<SemanticWeb::Schema::Trip>). A L<SemanticWeb::Schema::LearningResource> may be created as a result of an L<SemanticWeb::Schema::EducationEvent>, for example by recording one.



=head1 ATTRIBUTES


=head2 C<assesses>



The item being described is intended to assess the competency or learning
outcome defined by the referenced term.


A assesses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_assesses>

A predicate for the L</assesses> attribute.

=cut

has assesses => (
    is        => 'rw',
    predicate => '_has_assesses',
    json_ld   => 'assesses',
);


=head2 C<competency_required>

C<competencyRequired>

Knowledge, skill, ability or personal attribute that must be demonstrated
by a person or other entity in order to do something such as earn an
Educational Occupational Credential or understand a LearningResource.


A competency_required should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_competency_required>

A predicate for the L</competency_required> attribute.

=cut

has competency_required => (
    is        => 'rw',
    predicate => '_has_competency_required',
    json_ld   => 'competencyRequired',
);


=head2 C<educational_alignment>

C<educationalAlignment>

An alignment to an established educational framework.

This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.

A educational_alignment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AlignmentObject']>

=back

=head2 C<_has_educational_alignment>

A predicate for the L</educational_alignment> attribute.

=cut

has educational_alignment => (
    is        => 'rw',
    predicate => '_has_educational_alignment',
    json_ld   => 'educationalAlignment',
);


=head2 C<educational_level>

C<educationalLevel>

The level in terms of progression through an educational or training
context. Examples of educational levels include 'beginner', 'intermediate'
or 'advanced', and formal sets of level indicators.


A educational_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_educational_level>

A predicate for the L</educational_level> attribute.

=cut

has educational_level => (
    is        => 'rw',
    predicate => '_has_educational_level',
    json_ld   => 'educationalLevel',
);


=head2 C<educational_use>

C<educationalUse>

The purpose of a work in the context of education; for example,
'assignment', 'group work'.


A educational_use should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_educational_use>

A predicate for the L</educational_use> attribute.

=cut

has educational_use => (
    is        => 'rw',
    predicate => '_has_educational_use',
    json_ld   => 'educationalUse',
);


=head2 C<learning_resource_type>

C<learningResourceType>

The predominant type or kind characterizing the learning resource. For
example, 'presentation', 'handout'.


A learning_resource_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_learning_resource_type>

A predicate for the L</learning_resource_type> attribute.

=cut

has learning_resource_type => (
    is        => 'rw',
    predicate => '_has_learning_resource_type',
    json_ld   => 'learningResourceType',
);


=head2 C<teaches>



The item being described is intended to help a person learn the competency
or learning outcome defined by the referenced term.


A teaches should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_teaches>

A predicate for the L</teaches> attribute.

=cut

has teaches => (
    is        => 'rw',
    predicate => '_has_teaches',
    json_ld   => 'teaches',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
