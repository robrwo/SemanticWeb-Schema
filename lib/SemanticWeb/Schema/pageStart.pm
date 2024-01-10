use utf8;

package SemanticWeb::Schema::pageStart;

# ABSTRACT: The page on which the work starts; for example "135" or "xiii".

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pageStart';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The page on which the work starts; for example "135" or "xiii".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
