use utf8;

package SemanticWeb::Schema::Grant;

# ABSTRACT: A grant

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Grant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A grant, typically financial or otherwise quantifiable, of resources.
Typically a <a class="localLink" href="http://schema.org/funder">funder</a>
sponsors some <a class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a> to an <a
class="localLink" href="http://schema.org/Organization">Organization</a> or
<a class="localLink" href="http://schema.org/Person">Person</a>, sometimes
not necessarily via a dedicated or long-lived <a class="localLink"
href="http://schema.org/Project">Project</a>, resulting in one or more
outputs, or <a class="localLink"
href="http://schema.org/fundedItem">fundedItem</a>s. For financial
sponsorship, indicate the <a class="localLink"
href="http://schema.org/funder">funder</a> of a <a class="localLink"
href="http://schema.org/MonetaryGrant">MonetaryGrant</a>. For non-financial
support, indicate <a class="localLink"
href="http://schema.org/sponsor">sponsor</a> of <a class="localLink"
href="http://schema.org/Grant">Grant</a>s of resources (e.g. office
space).<br/><br/> Grants support activities directed towards some agreed
collective goals, often but not always organized as <a class="localLink"
href="http://schema.org/Project">Project</a>s. Long-lived projects are
sometimes sponsored by a variety of grants over time, but it is also common
for a project to be associated with a single grant.<br/><br/> The amount of
a <a class="localLink" href="http://schema.org/Grant">Grant</a> is
represented using <a class="localLink"
href="http://schema.org/amount">amount</a> as a <a class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<funded_item>

C<fundedItem>

=begin html

<p>Indicates an item funded or sponsored through a <a class="localLink"
href="http://schema.org/Grant">Grant</a>.<p>

=end html


A funded_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has funded_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'fundedItem',
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. e.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has sponsor => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sponsor',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
