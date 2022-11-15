use utf8;

package SemanticWeb::Schema::HowTo;

# ABSTRACT: Instructions that explain how to achieve a result by performing a sequence of steps.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'HowTo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

Instructions that explain how to achieve a result by performing a sequence
of steps.




=head1 ATTRIBUTES


=head2 C<estimated_cost>

C<estimatedCost>

The estimated cost of the supply or supplies consumed when performing
instructions.


A estimated_cost should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Str>

=back

=head2 C<_has_estimated_cost>

A predicate for the L</estimated_cost> attribute.

=cut

has estimated_cost => (
    is        => 'rw',
    predicate => '_has_estimated_cost',
    json_ld   => 'estimatedCost',
);


=head2 C<perform_time>

C<performTime>

The length of time it takes to perform instructions or a direction (not
including time to prepare the supplies), in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).


A perform_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_perform_time>

A predicate for the L</perform_time> attribute.

=cut

has perform_time => (
    is        => 'rw',
    predicate => '_has_perform_time',
    json_ld   => 'performTime',
);


=head2 C<prep_time>

C<prepTime>

The length of time it takes to prepare the items to be used in instructions
or a direction, in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).


A prep_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_prep_time>

A predicate for the L</prep_time> attribute.

=cut

has prep_time => (
    is        => 'rw',
    predicate => '_has_prep_time',
    json_ld   => 'prepTime',
);


=head2 C<step>



A single step item (as HowToStep, text, document, video, etc.) or a
HowToSection.


A step should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::HowToSection']>

=item C<InstanceOf['SemanticWeb::Schema::HowToStep']>

=item C<Str>

=back

=head2 C<_has_step>

A predicate for the L</step> attribute.

=cut

has step => (
    is        => 'rw',
    predicate => '_has_step',
    json_ld   => 'step',
);


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


=head2 C<supply>



A sub-property of instrument. A supply consumed when performing
instructions or a direction.


A supply should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HowToSupply']>

=item C<Str>

=back

=head2 C<_has_supply>

A predicate for the L</supply> attribute.

=cut

has supply => (
    is        => 'rw',
    predicate => '_has_supply',
    json_ld   => 'supply',
);


=head2 C<tool>



A sub property of instrument. An object used (but not consumed) when
performing instructions or a direction.


A tool should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HowToTool']>

=item C<Str>

=back

=head2 C<_has_tool>

A predicate for the L</tool> attribute.

=cut

has tool => (
    is        => 'rw',
    predicate => '_has_tool',
    json_ld   => 'tool',
);


=head2 C<total_time>

C<totalTime>

The total time required to perform instructions or a direction (including
time to prepare the supplies), in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).


A total_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_total_time>

A predicate for the L</total_time> attribute.

=cut

has total_time => (
    is        => 'rw',
    predicate => '_has_total_time',
    json_ld   => 'totalTime',
);


=head2 C<yield>



The quantity that results by performing instructions. For example, a paper
airplane, 10 personalized candles.


A yield should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Str>

=back

=head2 C<_has_yield>

A predicate for the L</yield> attribute.

=cut

has yield => (
    is        => 'rw',
    predicate => '_has_yield',
    json_ld   => 'yield',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
