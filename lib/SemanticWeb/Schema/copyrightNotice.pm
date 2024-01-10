use utf8;

package SemanticWeb::Schema::copyrightNotice;

# ABSTRACT: Text of a notice appropriate for describing the copyright aspects of this Creative Work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'copyrightNotice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Text of a notice appropriate for describing the copyright aspects of this
Creative Work, ideally indicating the owner of the copyright for the Work.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
