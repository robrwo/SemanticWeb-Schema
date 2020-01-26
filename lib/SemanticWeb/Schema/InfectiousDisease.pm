use utf8;

package SemanticWeb::Schema::InfectiousDisease;

# ABSTRACT: An infectious disease is a clinically evident human disease resulting from the presence of pathogenic microbial agents

use Moo;

extends qw/ SemanticWeb::Schema::MedicalCondition /;


use MooX::JSON_LD 'InfectiousDisease';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

An infectious disease is a clinically evident human disease resulting from
the presence of pathogenic microbial agents, like pathogenic viruses,
pathogenic bacteria, fungi, protozoa, multicellular parasites, and prions.
To be considered an infectious disease, such pathogens are known to be able
to cause this disease.




=head1 ATTRIBUTES


=head2 C<infectious_agent>

C<infectiousAgent>

The actual infectious agent, such as a specific bacterium.


A infectious_agent should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_infectious_agent>

A predicate for the L</infectious_agent> attribute.

=cut

has infectious_agent => (
    is        => 'rw',
    predicate => '_has_infectious_agent',
    json_ld   => 'infectiousAgent',
);


=head2 C<infectious_agent_class>

C<infectiousAgentClass>

The class of infectious agent (bacteria, prion, etc.) that causes the
disease.


A infectious_agent_class should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::InfectiousAgentClass']>

=back

=head2 C<_has_infectious_agent_class>

A predicate for the L</infectious_agent_class> attribute.

=cut

has infectious_agent_class => (
    is        => 'rw',
    predicate => '_has_infectious_agent_class',
    json_ld   => 'infectiousAgentClass',
);


=head2 C<transmission_method>

C<transmissionMethod>

How the disease spreads, either as a route or vector, for example 'direct
contact', 'Aedes aegypti', etc.


A transmission_method should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_transmission_method>

A predicate for the L</transmission_method> attribute.

=cut

has transmission_method => (
    is        => 'rw',
    predicate => '_has_transmission_method',
    json_ld   => 'transmissionMethod',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalCondition>

=cut

1;
