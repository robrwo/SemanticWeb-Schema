package SemanticWeb::Schema::AcceptAction;

# ABSTRACT: <p>The act of committing to/adopting an object

use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use MooX::JSON_LD 'AcceptAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>The act of committing to/adopting an object.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/RejectAction">RejectAction</a>: The antonym of
AcceptAction.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
