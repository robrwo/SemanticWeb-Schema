use utf8;

package SemanticWeb::Schema::ConsumeAction;

# ABSTRACT: The act of ingesting information/resources/food.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'ConsumeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of ingesting information/resources/food.




=head1 ATTRIBUTES


=head2 C<action_accessibility_requirement>

C<actionAccessibilityRequirement>

A set of requirements that a must be fulfilled in order to perform an
Action. If more than one value is specied, fulfilling one set of
requirements will allow the Action to be performed.


A action_accessibility_requirement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ActionAccessSpecification']>

=back

=cut

has action_accessibility_requirement => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionAccessibilityRequirement',
);


=head2 C<expects_acceptance_of>

C<expectsAcceptanceOf>

An Offer which must be accepted before the user can perform the Action. For
example, the user may need to buy a movie before being able to watch it.


A expects_acceptance_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has expects_acceptance_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'expectsAcceptanceOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
