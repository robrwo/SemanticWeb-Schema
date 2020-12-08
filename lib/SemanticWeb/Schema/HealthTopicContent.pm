use utf8;

package SemanticWeb::Schema::HealthTopicContent;

# ABSTRACT: [[HealthTopicContent]] is [[WebContent]] that is about some aspect of a health topic

use Moo;

extends qw/ SemanticWeb::Schema::WebContent /;


use MooX::JSON_LD 'HealthTopicContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

[[HealthTopicContent]] is [[WebContent]] that is about some aspect of a
health topic, e.g. a condition, its symptoms or treatments. Such content
may be comprised of several parts or sections and use different types of
media. Multiple instances of [[WebContent]] (and hence
[[HealthTopicContent]]) can be related using [[hasPart]] / [[isPartOf]]
where there is some kind of content hierarchy, and their content described
with [[about]] and [[mentions]] e.g. building upon the existing
[[MedicalCondition]] vocabulary. 




=head1 ATTRIBUTES


=head2 C<has_health_aspect>

C<hasHealthAspect>

Indicates the aspect or aspects specifically addressed in some
[[HealthTopicContent]]. For example, that the content is an overview, or
that it talks about treatment, self-care, treatments or their side-effects.


A has_health_aspect should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HealthAspectEnumeration']>

=back

=head2 C<_has_has_health_aspect>

A predicate for the L</has_health_aspect> attribute.

=cut

has has_health_aspect => (
    is        => 'rw',
    predicate => '_has_has_health_aspect',
    json_ld   => 'hasHealthAspect',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::WebContent>

=cut

1;
