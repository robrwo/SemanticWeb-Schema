use utf8;

package SemanticWeb::Schema::HowToSection;

# ABSTRACT: A sub-grouping of steps in the instructions for how to achieve a result (e

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::ItemList SemanticWeb::Schema::ListItem /;


use MooX::JSON_LD 'HowToSection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub-grouping of steps in the instructions for how to achieve a result
(e.g. steps for making a pie crust within a pie recipe).




=head1 ATTRIBUTES


=head2 C<steps>



A single step item (as HowToStep, text, document, video, etc.) or a
HowToSection (originally misnamed 'steps'; 'step' is preferred).


A steps should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<Str>

=back

=head2 C<_has_steps>

A predicate for the L</steps> attribute.

=cut

has steps => (
    is        => 'rw',
    predicate => '_has_steps',
    json_ld   => 'steps',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
