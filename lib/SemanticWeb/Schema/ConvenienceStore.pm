use utf8;

package SemanticWeb::Schema::ConvenienceStore;

# ABSTRACT: A convenience store.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'ConvenienceStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A convenience store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
