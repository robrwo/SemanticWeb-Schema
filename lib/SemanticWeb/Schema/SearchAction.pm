use utf8;

package SemanticWeb::Schema::SearchAction;

# ABSTRACT: The act of searching for an object

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'SearchAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of searching for an object.<br/><br/> Related actions:<br/><br/>
<ul> <li><a class="localLink"
href="http://schema.org/FindAction">FindAction</a>: SearchAction generally
leads to a FindAction, but not necessarily.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<query>



A sub property of instrument. The query used on this action.


A query should be one of the following types:

=over

=item C<Str>

=back

=cut

has query => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'query',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
